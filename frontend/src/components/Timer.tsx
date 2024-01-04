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

type TimeState = {
  time: number;
  hasChanged?: boolean;
};

// close and open on hover only works so-la-la
// but should be good enough for demo purposes
export function Timer() {
  const [open, setOpen] = useState(false);
  const [canCloseOnLeave, setCanCloseOnLeave] = useState(true);
  const [time, setTime] = useState<TimeState>({ time: 0 });
  const [timer, setTimer] = useState<TimerState | null>();
  const [hasFocus, setHasFocus] = useState(false);

  const handleExpand = (open: boolean) => {
    if (open) {
      setOpen(true);
      return;
    }
    if (canCloseOnLeave) {
      setOpen(false);
    }
  };

  const onTimeChange = (e: ChangeEvent<HTMLInputElement>) => {
    const newTime = parseInt(e.target.value);
    setTime((prevTime) => ({
      hasChanged: prevTime.time !== newTime && newTime !== 0,
      time: newTime,
    }));

    setTimer(null);
  };

  const couldCloseOnLeave = !time.hasChanged && !timer && !hasFocus;

  const activationProps = {
    onFocus: () => {
      setHasFocus(true);
      setCanCloseOnLeave(false);
    },
    onBlur: () => {
      setHasFocus(false);
      setCanCloseOnLeave(true);
    },
    onMouseEnter: () => {
      setCanCloseOnLeave(false);
    },
    onMouseLeave: () => {
      if (couldCloseOnLeave) {
        setCanCloseOnLeave(true);
      }
    },
  };

  const onStartTimer = () => {
    if (timer?.timerId) {
      clearInterval(timer?.timerId);
    }

    // when timer is started, both input field and start button are removed
    // so we can not have focus anymore (even we won't receive onBlur in this case)
    setHasFocus(false);

    if (time.time === 0) {
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
      timeRemaining: time.time * 60,
      timerId: id,
    });
  };

  const onCancelTimer = () => {
    if (!timer) {
      return;
    }
    clearInterval(timer.timerId);
    setTimer(null);
    setHasFocus(false);
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

  const buttonEnabled = time.time > 0;

  return (
    <div
      onMouseEnter={() => handleExpand(true)}
      onMouseLeave={() => handleExpand(false)}
      className={twMerge(
        "max-w-1/4 flex  items-center rounded bg-white pe-2 ps-2 font-barlow",
        timer?.state === "finished" && "bg-green",
      )}
    >
      {open && (
        <>
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
                  value={time.time}
                  onChange={onTimeChange}
                  min={0}
                  max={300}
                  {...activationProps}
                />
              </div>
              <span className={"me-2 ms-1"}>{" min "}</span>
              <div className={"me-2 ms-2"}>
                <Button disabled={!buttonEnabled}>
                  <button
                    onClick={onStartTimer}
                    {...activationProps}
                    name={"startBtn"}
                  >
                    Start
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
              <div className={"me-2 ms-2 "}>
                <Button disabled={!buttonEnabled}>
                  <button onClick={onCancelTimer} name={"cancelBtn"}>
                    Cancel
                  </button>
                </Button>
              </div>
            </>
          )}
          {timerUi === "finished" && (
            <>
              <div className={"me-2 w-8 font-bold text-white"}>
                {formatMinSeconds(time.time * 60)}
              </div>
              <div className={"me-2 ms-2"}>
                <Button disabled={!buttonEnabled}>
                  <button onClick={onCancelTimer} name={"resetBtn"}>
                    Reset
                  </button>
                </Button>
              </div>
            </>
          )}
        </>
      )}
      <Button>
        <button onClick={() => setOpen((o) => !o)}>
          <i className="fa-solid fa-hourglass-start"></i>
        </button>
      </Button>
    </div>
  );
}
