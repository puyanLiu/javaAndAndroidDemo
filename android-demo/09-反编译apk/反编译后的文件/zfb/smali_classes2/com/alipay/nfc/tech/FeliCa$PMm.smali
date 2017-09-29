.class public final Lcom/alipay/nfc/tech/FeliCa$PMm;
.super Lcom/alipay/nfc/tech/FeliCa;
.source "FeliCa.java"


# static fields
.field public static final EMPTY:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/16 v0, 0x8

    new-array v0, v0, [B

    sput-object v0, Lcom/alipay/nfc/tech/FeliCa$PMm;->EMPTY:[B

    .line 76
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 80
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    :cond_0
    sget-object p1, Lcom/alipay/nfc/tech/FeliCa$PMm;->EMPTY:[B

    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/nfc/tech/FeliCa;-><init>([B)V

    .line 81
    return-void
.end method


# virtual methods
.method public final getIcCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$PMm;->data:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/alipay/nfc/Util;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMaximumResponseTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$PMm;->data:[B

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/alipay/nfc/Util;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
