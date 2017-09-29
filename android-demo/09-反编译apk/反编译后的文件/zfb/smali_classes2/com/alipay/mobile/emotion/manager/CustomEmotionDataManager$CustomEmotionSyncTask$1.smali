.class Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask$1;
.super Ljava/lang/Object;
.source "CustomEmotionDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask$1;->this$1:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask$1;->this$1:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->access$3(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;I)V

    .line 352
    return-void
.end method
