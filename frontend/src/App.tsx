import { QueryClient, QueryClientProvider } from "@tanstack/react-query";
import { Suspense } from "react";
import { RouterProvider } from "@tanstack/react-router";
import { router } from "./router-config";

const queryClient = new QueryClient({
  defaultOptions: {
    queries: {
      retry: false,
    },
  },
});

export default function App() {
  return (
    <QueryClientProvider client={queryClient}>
      <Suspense fallback={<h1>Loading</h1>}>
        <RouterProvider router={router} />
      </Suspense>
    </QueryClientProvider>
  );
}
