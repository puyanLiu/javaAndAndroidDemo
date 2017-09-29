.class public Lcom/alipay/mobile/common/transportext/biz/quic/LibQuicCallback;
.super Ljava/lang/Object;
.source "LibQuicCallback.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string/jumbo v0, "libquic_callback"

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/LibQuicCallback;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public offerLog(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    return-void
.end method
