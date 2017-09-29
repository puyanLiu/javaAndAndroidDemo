.class Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$8$1;
.super Ljava/lang/Object;
.source "EmotionDownListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$8;

.field private final synthetic val$result:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$8;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$8$1;->this$1:Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$8;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$8$1;->val$result:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$8$1;->val$result:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$8$1;->val$result:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;

    iget-object v0, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;->emotionPackageBriefVOs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$8$1;->val$result:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;

    iget-object v0, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;->emotionPackageBriefVOs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$8$1;->this$1:Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$8;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$8;->access$2(Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$8;)Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$8$1;->val$result:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;

    iget-object v1, v1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;->emotionPackageBriefVOs:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->access$8(Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;Ljava/util/List;)V

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$8$1;->val$result:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;

    iget-object v0, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;->emotionPackageBriefVOs:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 305
    const-string/jumbo v1, "EmotionManageList"

    .line 304
    invoke-static {v1, v0}, Lcom/alipay/mobile/emotion/util/CacheHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string/jumbo v0, "EmotionManageListVersion"

    .line 310
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$8$1;->val$result:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;

    iget-wide v1, v1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;->version:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 308
    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/util/CacheHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
