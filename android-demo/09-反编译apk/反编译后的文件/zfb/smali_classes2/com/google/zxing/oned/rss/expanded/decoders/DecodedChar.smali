.class final Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
.super Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;


# static fields
.field static final FNC1:C = '$'


# instance fields
.field private final a:C


# direct methods
.method constructor <init>(IC)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;-><init>(I)V

    iput-char p2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->a:C

    return-void
.end method


# virtual methods
.method final getValue()C
    .locals 1

    iget-char v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->a:C

    return v0
.end method

.method final isFNC1()Z
    .locals 2

    iget-char v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->a:C

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
