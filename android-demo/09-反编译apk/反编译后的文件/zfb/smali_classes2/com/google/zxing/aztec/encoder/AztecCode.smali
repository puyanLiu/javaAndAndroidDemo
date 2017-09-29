.class public final Lcom/google/zxing/aztec/encoder/AztecCode;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCodeWords()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->d:I

    return v0
.end method

.method public final getLayers()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->c:I

    return v0
.end method

.method public final getMatrix()Lcom/google/zxing/common/BitMatrix;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->e:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->b:I

    return v0
.end method

.method public final isCompact()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->a:Z

    return v0
.end method

.method public final setCodeWords(I)V
    .locals 0

    iput p1, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->d:I

    return-void
.end method

.method public final setCompact(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->a:Z

    return-void
.end method

.method public final setLayers(I)V
    .locals 0

    iput p1, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->c:I

    return-void
.end method

.method public final setMatrix(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0

    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->e:Lcom/google/zxing/common/BitMatrix;

    return-void
.end method

.method public final setSize(I)V
    .locals 0

    iput p1, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->b:I

    return-void
.end method
