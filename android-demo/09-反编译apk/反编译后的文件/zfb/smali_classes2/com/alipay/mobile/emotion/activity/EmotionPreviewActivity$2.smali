.class Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$2;
.super Ljava/lang/Object;
.source "EmotionPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->access$8(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;)Lcom/alipay/mobile/commonui/widget/APPopMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->showAsDropDownRight(Landroid/view/View;)V

    .line 195
    return-void
.end method
