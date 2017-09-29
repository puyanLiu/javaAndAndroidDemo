.class public Lcom/alipay/android/app/template/util/RpcHelper;
.super Ljava/lang/Object;
.source "RpcHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callRpc(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/util/RpcHelper$RpcCallback;)V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/alipay/android/app/template/util/RpcHelper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/android/app/template/util/RpcHelper$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/util/RpcHelper$RpcCallback;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 40
    return-void
.end method
