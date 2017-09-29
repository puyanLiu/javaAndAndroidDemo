.class public final Lcom/google/zxing/pdf417/encoder/Dimensions;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/pdf417/encoder/Dimensions;->a:I

    iput p2, p0, Lcom/google/zxing/pdf417/encoder/Dimensions;->b:I

    iput p3, p0, Lcom/google/zxing/pdf417/encoder/Dimensions;->c:I

    iput p4, p0, Lcom/google/zxing/pdf417/encoder/Dimensions;->d:I

    return-void
.end method


# virtual methods
.method public final getMaxCols()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/pdf417/encoder/Dimensions;->b:I

    return v0
.end method

.method public final getMaxRows()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/pdf417/encoder/Dimensions;->d:I

    return v0
.end method

.method public final getMinCols()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/pdf417/encoder/Dimensions;->a:I

    return v0
.end method

.method public final getMinRows()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/pdf417/encoder/Dimensions;->c:I

    return v0
.end method
