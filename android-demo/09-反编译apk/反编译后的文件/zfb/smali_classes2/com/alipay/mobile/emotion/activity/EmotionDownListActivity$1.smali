.class Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$1;
.super Ljava/lang/Object;
.source "EmotionDownListActivity.java"

# interfaces
.implements Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnChange(Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;I)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->refreshListView()V

    .line 80
    return-void
.end method
