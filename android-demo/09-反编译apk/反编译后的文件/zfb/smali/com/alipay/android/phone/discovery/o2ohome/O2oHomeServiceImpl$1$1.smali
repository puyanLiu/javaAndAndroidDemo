.class Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1$1;
.super Ljava/lang/Object;
.source "O2oHomeServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 93
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "first time start:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;)Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$5(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;)Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$5(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;)Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)V

    .line 98
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;)Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$6(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Z)V

    .line 99
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;)Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$4(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Z)V

    .line 100
    return-void
.end method
