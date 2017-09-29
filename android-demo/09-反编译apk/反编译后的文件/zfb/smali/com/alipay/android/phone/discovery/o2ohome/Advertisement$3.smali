.class Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$3;
.super Ljava/lang/Object;
.source "Advertisement.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

.field private final synthetic val$adCodeNew:Ljava/lang/String;

.field private final synthetic val$adCodeOld:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$3;->val$adCodeNew:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$3;->val$adCodeOld:Ljava/lang/String;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 139
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->access$1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ad.updateSpaceCode begin. adCodeNew: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$3;->val$adCodeNew:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " adCodeOld: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$3;->val$adCodeOld:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 142
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$3;->val$adCodeNew:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$3;->val$adCodeOld:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->isSameCity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const-string/jumbo v1, "adCode"

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$3;->val$adCodeOld:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->access$4(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    move-result-object v1

    const-string/jumbo v2, "o2o_homepage"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->updateSpaceCode(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 149
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->access$1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "call updateSpaceCode end"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void

    .line 146
    :cond_0
    const-string/jumbo v1, "adCode"

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$3;->val$adCodeNew:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->access$4(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    move-result-object v1

    const-string/jumbo v2, "o2o_homepage"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->updateSpaceCode(Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_0
.end method
