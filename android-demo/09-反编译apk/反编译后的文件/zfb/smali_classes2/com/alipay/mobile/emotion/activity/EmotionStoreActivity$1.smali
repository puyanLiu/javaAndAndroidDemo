.class Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$1;
.super Ljava/lang/Object;
.source "EmotionStoreActivity.java"

# interfaces
.implements Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnChange(Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;I)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->refreshListView()V

    .line 81
    return-void
.end method
