.class final Lcom/google/zxing/datamatrix/encoder/EncoderContext;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

.field private c:Lcom/google/zxing/Dimension;

.field private d:Lcom/google/zxing/Dimension;

.field private final e:Ljava/lang/StringBuilder;

.field private f:I

.field private g:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

.field private h:I

.field pos:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0x3f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    if-ne v4, v6, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Message contains characters outside ISO-8859-1 encoding."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->a:Ljava/lang/String;

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    iput-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->b:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->e:Ljava/lang/StringBuilder;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->f:I

    return-void
.end method

.method private a()I
    .locals 2

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->h:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final getCodewordCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public final getCodewords()Ljava/lang/StringBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->e:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final getCurrent()C
    .locals 2

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->a:Ljava/lang/String;

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final getCurrentChar()C
    .locals 2

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->a:Ljava/lang/String;

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getNewEncoding()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->f:I

    return v0
.end method

.method public final getRemainingCharacters()I
    .locals 2

    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->a()I

    move-result v0

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->g:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    return-object v0
.end method

.method public final hasMoreCharacters()Z
    .locals 2

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final resetEncoderSignal()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->f:I

    return-void
.end method

.method public final resetSymbolInfo()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->g:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    return-void
.end method

.method public final setSizeConstraints(Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)V
    .locals 0

    iput-object p1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->c:Lcom/google/zxing/Dimension;

    iput-object p2, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->d:Lcom/google/zxing/Dimension;

    return-void
.end method

.method public final setSkipAtEnd(I)V
    .locals 0

    iput p1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->h:I

    return-void
.end method

.method public final setSymbolShape(Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)V
    .locals 0

    iput-object p1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->b:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    return-void
.end method

.method public final signalEncoderChange(I)V
    .locals 0

    iput p1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->f:I

    return-void
.end method

.method public final updateSymbolInfo()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    return-void
.end method

.method public final updateSymbolInfo(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->g:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->g:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->b:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->c:Lcom/google/zxing/Dimension;

    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->d:Lcom/google/zxing/Dimension;

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->g:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    :cond_1
    return-void
.end method

.method public final writeCodeword(C)V
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final writeCodewords(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
