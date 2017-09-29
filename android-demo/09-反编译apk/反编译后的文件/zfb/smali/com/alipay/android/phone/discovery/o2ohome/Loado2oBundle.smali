.class public Lcom/alipay/android/phone/discovery/o2ohome/Loado2oBundle;
.super Ljava/lang/Object;
.source "Loado2oBundle.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/Loado2oBundle$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/Loado2oBundle$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/Loado2oBundle;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 19
    return-void
.end method
