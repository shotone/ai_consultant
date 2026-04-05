"use client";

import { ProtectedRoute } from "@/components/ProtectedRoute";
import { ProductForm } from "@/components/ProductForm";
import { useParams } from "next/navigation";

export default function EditProductPage() {
  const { id } = useParams<{ id: string }>();

  return (
    <ProtectedRoute>
      {id ? <ProductForm productId={id} /> : null}
    </ProtectedRoute>
  );
}
