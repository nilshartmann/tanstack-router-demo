import { formatDuration } from "date-fns";

export function formatMinuteDuration(durationInMin: number) {
  const hours = Math.floor(durationInMin / 60);
  const minutes = durationInMin % 60;

  return formatDuration({ hours: hours, minutes: minutes });
}

export function formatMinSeconds(time: number) {
  const minutes = Math.floor(time / 60);
  const seconds = time % 60;

  return `${minutes}:${seconds < 10 ? "0" : ""}${seconds}`; // ensure two-digit seconds
}
