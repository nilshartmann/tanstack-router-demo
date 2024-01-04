/// <reference types="vite/client" />

import "react";

declare module "react" {
  export interface CSSProperties {
    "--recipe-bg-image"?: string;
  }
}
