.class Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter$1;
.super Ljava/lang/Object;
.source "PedoMeter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter$1;->this$0:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter$1;->this$0:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    invoke-static {v0}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->access$0(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;)Lcom/alipay/mobile/framework/service/common/RpcService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 165
    iget-object v1, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter$1;->this$0:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 167
    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 165
    invoke-static {v1, v0}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->access$1(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;Lcom/alipay/mobile/framework/service/common/RpcService;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter$1;->this$0:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    invoke-static {v0}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->access$0(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;)Lcom/alipay/mobile/framework/service/common/RpcService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter$1;->this$0:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    invoke-static {v0}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->access$0(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;)Lcom/alipay/mobile/framework/service/common/RpcService;

    move-result-object v0

    const-class v1, Lcom/alipay/mobilelbs/rpc/step/CountStepService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilelbs/rpc/step/CountStepService;

    .line 171
    new-instance v1, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;

    invoke-direct {v1}, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;-><init>()V

    .line 172
    const-string/jumbo v2, "mobilelbs"

    invoke-virtual {v1, v2}, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->setAppKey(Ljava/lang/String;)V

    .line 173
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->setAccuracy(D)V

    .line 174
    const-string/jumbo v2, "eYOHkb+uTY9BenrVjMj1NpeZsiceIAuB7M1asY51"

    invoke-virtual {v1, v2}, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->setApdid(Ljava/lang/String;)V

    .line 175
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->setImei(Ljava/lang/String;)V

    .line 176
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->setImsi(Ljava/lang/String;)V

    .line 177
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->setUtdid(Ljava/lang/String;)V

    .line 178
    const-string/jumbo v2, "umid"

    invoke-virtual {v1, v2}, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->setUmid(Ljava/lang/String;)V

    .line 179
    const-string/jumbo v2, "andriod"

    invoke-virtual {v1, v2}, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->setOs(Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter$1;->this$0:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    invoke-static {v2}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->access$2(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->setStepCounters(Ljava/util/List;)V

    .line 182
    :try_start_0
    invoke-interface {v0, v1}, Lcom/alipay/mobilelbs/rpc/step/CountStepService;->count(Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;)Lcom/alipay/mobilelbs/rpc/step/CountStepResponse;

    move-result-object v0

    .line 183
    iget-boolean v1, v0, Lcom/alipay/mobilelbs/rpc/step/CountStepResponse;->success:Z

    if-eqz v1, :cond_3

    .line 184
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PedoMeter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "RPC end "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/alipay/mobilelbs/rpc/step/CountStepResponse;->totalStep:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "RPC send "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter$1;->this$0:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    invoke-static {v3}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->access$3(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;)I

    move-result v3

    iget-object v4, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter$1;->this$0:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    invoke-static {v4}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->access$4(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter$1;->this$0:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    iget-object v1, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter$1;->this$0:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    invoke-static {v1}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->access$3(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->access$5(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;I)V

    .line 186
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter$1;->this$0:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    invoke-static {v0}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->access$6(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter$1;->this$0:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    invoke-static {v0}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->access$6(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;)Ljava/util/Date;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter$1;->this$0:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    invoke-static {v0}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->access$7(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "PedoMeter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 190
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 191
    const-string/jumbo v1, "startTime"

    iget-object v2, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter$1;->this$0:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    invoke-static {v2}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->access$4(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 193
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    :cond_2
    :goto_0
    return-void

    .line 196
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PedoMeter"

    const-string/jumbo v2, "RPC error"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PedoMeter"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
