export type Flatten<P> = {
  [K in keyof P]: P[K];
} & {};
