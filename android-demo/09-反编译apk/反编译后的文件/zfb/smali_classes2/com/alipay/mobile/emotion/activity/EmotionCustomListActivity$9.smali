.class Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$9;
.super Ljava/lang/Object;
.source "EmotionCustomListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$9;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isForceStop:Z

    .line 341
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$9;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->access$5(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V

    .line 342
    return-void
.end method
