.class final Lcom/alipay/pushsdk/push/a/c;
.super Ljava/lang/Object;
.source "AmnetAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/common/amnet/api/AmnetResult;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final notifyResult(Z)V
    .locals 0

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-static {}, Lcom/alipay/pushsdk/push/a/a;->c()V

    goto :goto_0
.end method
