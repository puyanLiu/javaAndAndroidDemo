.class Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$7;
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
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$7;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$7;)Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$7;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$7;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$7;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    sget v3, Lcom/alipay/android/phone/emotion/R$string;->del_emotion:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$7;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    sget v4, Lcom/alipay/android/phone/emotion/R$string;->delete:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 303
    new-instance v4, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$7$1;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$7$1;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$7;)V

    .line 314
    iget-object v5, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$7;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    sget v6, Lcom/alipay/android/phone/emotion/R$string;->cancel:I

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$7$2;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$7$2;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$7;)V

    .line 302
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 321
    return-void
.end method
