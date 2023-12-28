import { formatDuration } from "date-fns";

export function formatMinuteDuration(durationInMin: number) {
  const hours = Math.floor(durationInMin / 60);
  const minutes = durationInMin % 60;

  return formatDuration({ hours: hours, minutes: minutes });
}
