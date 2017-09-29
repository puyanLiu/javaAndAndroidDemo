.class public final Lcom/google/zxing/common/DecoderResult;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/Object;

.field private final h:I

.field private final i:I


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/common/DecoderResult;->a:[B

    iput-object p2, p0, Lcom/google/zxing/common/DecoderResult;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/zxing/common/DecoderResult;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/google/zxing/common/DecoderResult;->d:Ljava/lang/String;

    iput p6, p0, Lcom/google/zxing/common/DecoderResult;->h:I

    iput p5, p0, Lcom/google/zxing/common/DecoderResult;->i:I

    return-void
.end method


# virtual methods
.method public final getByteSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->c:Ljava/util/List;

    return-object v0
.end method

.method public final getECLevel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getErasures()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getErrorsCorrected()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getOther()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public final getRawBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->a:[B

    return-object v0
.end method

.method public final getStructuredAppendParity()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/common/DecoderResult;->h:I

    return v0
.end method

.method public final getStructuredAppendSequenceNumber()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/common/DecoderResult;->i:I

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final hasStructuredAppend()Z
    .locals 1

    iget v0, p0, Lcom/google/zxing/common/DecoderResult;->h:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/zxing/common/DecoderResult;->i:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setErasures(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/zxing/common/DecoderResult;->f:Ljava/lang/Integer;

    return-void
.end method

.method public final setErrorsCorrected(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/zxing/common/DecoderResult;->e:Ljava/lang/Integer;

    return-void
.end method

.method public final setOther(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/zxing/common/DecoderResult;->g:Ljava/lang/Object;

    return-void
.end method
