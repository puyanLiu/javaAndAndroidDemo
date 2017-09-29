.class Lcom/alipay/mobile/emotion/app/EmotionReceiver$1;
.super Ljava/lang/Object;
.source "EmotionReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/app/EmotionReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/app/EmotionReceiver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/app/EmotionReceiver$1;->this$0:Lcom/alipay/mobile/emotion/app/EmotionReceiver;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->destroy()V

    .line 31
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    .line 32
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->destroy()V

    .line 33
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    .line 34
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/SyncServiceHelper;->getInstance()Lcom/alipay/mobile/emotion/manager/SyncServiceHelper;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/emotion/app/EmotionReceiver;->access$0()Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/manager/SyncServiceHelper;->registerSyncCallback(Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)Z

    .line 35
    return-void
.end method
