import { Input } from "./Input.tsx";
import { Button } from "./Button.tsx";
import React, { ChangeEvent, useEffect, useState } from "react";
import { formatMinSeconds } from "./FormatMinuteDuration.tsx";
import { twMerge } from "tailwind-merge";

type TimerState = {
  state: "running" | "finished";
  timerId: number;
  timeRemaining: number;
};

export function Timer() {
  const [time, setTime] = useState(0);

  const [timer, setTimer] = useState<TimerState | null>();

  const onTimeChange = (e: ChangeEvent<HTMLInputElement>) => {
    setTime(parseInt(e.target.value));
  };

  const onStartTimer = () => {
    if (timer?.timerId) {
      clearInterval(timer?.timerId);
    }

    if (time === 0) {
      return;
    }

    const id = setInterval(() => {
      setTimer((prevTimer) => {
        if (!prevTimer) {
          return null;
        }
        return {
          ...prevTimer,
          timeRemaining:
            prevTimer.timeRemaining > 1 ? prevTimer.timeRemaining - 1 : 0,
        };
      });
    }, 1000);

    setTimer({
      state: "running",
      timeRemaining: time * 60,
      timerId: id,
    });
  };

  const onCancelTimer = () => {
    if (!timer) {
      return;
    }
    clearInterval(timer.timerId);
    setTimer(null);
  };

  useEffect(() => {
    if (!timer) {
      return;
    }
    if (timer.timeRemaining <= 0 && timer.timerId) {
      clearInterval(timer.timerId);
      setTimer({ state: "finished", timerId: 0, timeRemaining: 0 });
    }
  }, [timer]);

  useEffect(() => {
    return () => {
      if (timer?.timerId) {
        clearInterval(timer?.timerId);
      }
    };
  }, [timer?.timerId]);

  const timerUi =
    timer?.state === "running"
      ? "running"
      : timer?.state === "finished"
        ? "finished"
        : "edit";

  const buttonEnabled = time > 0;

  return (
    <div
      className={twMerge(
        "max-w-1/4 flex  items-center rounded bg-white pe-4 ps-4 font-barlow",
        timerUi === "finished" && "bg-green",
      )}
    >
      {timerUi === "finished" && (
        <div className={"me-2 text-white"}>Finished</div>
      )}
      {timerUi === "finished" || (
        <div className={"me-2 text-gray-500"}>Timer</div>
      )}

      {timerUi === "edit" && (
        <>
          <div className={"max-w-16"}>
            <Input
              name={"time"}
              type={"number"}
              value={time}
              onChange={onTimeChange}
              min={0}
              max={300}
            />
          </div>
          <span className={"me-2 ms-1"}>{" min "}</span>
          <div className={"ms-2"}>
            <Button disabled={!buttonEnabled}>
              <button onClick={onStartTimer}>
                <i className="fa-solid fa-hourglass-start me-2"></i>Start
              </button>
            </Button>
          </div>
        </>
      )}
      {timerUi === "running" && (
        <>
          <div className={"me-2 w-8 font-bold text-gray-500"}>
            {formatMinSeconds(timer?.timeRemaining || 0)}
          </div>
          <div className={"ms-2"}>
            <Button disabled={!buttonEnabled}>
              <button onClick={onCancelTimer}>
                <i className="fa-solid fa-xmark me-2"></i>Cancel
              </button>
            </Button>
          </div>
        </>
      )}
      {timerUi === "finished" && (
        <>
          <div className={"me-2 w-8 font-bold text-white"}>
            {formatMinSeconds(time * 60)}
          </div>
          <div className={"ms-2"}>
            <Button disabled={!buttonEnabled}>
              <button onClick={onCancelTimer}>
                <i className="fa-solid fa-xmark me-2"></i>Reset
              </button>
            </Button>
          </div>
        </>
      )}
    </div>
  );
}
