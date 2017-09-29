.class final Lcom/google/zxing/pdf417/decoder/Codeword;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:I


# direct methods
.method constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->e:I

    iput p1, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->a:I

    iput p2, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->b:I

    iput p3, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->c:I

    iput p4, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->d:I

    return-void
.end method


# virtual methods
.method final getBucket()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->c:I

    return v0
.end method

.method final getEndX()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->b:I

    return v0
.end method

.method final getRowNumber()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->e:I

    return v0
.end method

.method final getStartX()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->a:I

    return v0
.end method

.method final getValue()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->d:I

    return v0
.end method

.method final getWidth()I
    .locals 2

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->b:I

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method final hasValidRowNumber()Z
    .locals 1

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->e:I

    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->isValidRowNumber(I)Z

    move-result v0

    return v0
.end method

.method final isValidRowNumber(I)Z
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->c:I

    rem-int/lit8 v1, p1, 0x3

    mul-int/lit8 v1, v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final setRowNumber(I)V
    .locals 0

    iput p1, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->e:I

    return-void
.end method

.method final setRowNumberAsRowIndicatorColumn()V
    .locals 2

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->d:I

    div-int/lit8 v0, v0, 0x1e

    mul-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->c:I

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->e:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
