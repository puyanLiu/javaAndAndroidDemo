.class Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$8;
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
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$8;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isForceStop:Z

    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$8;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->access$7(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V

    .line 334
    return-void
.end method
