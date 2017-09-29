.class Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask$3;
.super Ljava/lang/Object;
.source "CustomEmotionDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask$3;->this$1:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;

    iput p2, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask$3;->val$index:I

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask$3;->this$1:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->access$6(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;)V

    .line 451
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask$3;->this$1:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;

    iget v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask$3;->val$index:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->access$3(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;I)V

    .line 452
    return-void
.end method
