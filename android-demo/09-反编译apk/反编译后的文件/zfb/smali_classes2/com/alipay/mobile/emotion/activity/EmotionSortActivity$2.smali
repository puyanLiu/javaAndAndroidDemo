.class Lcom/alipay/mobile/emotion/activity/EmotionSortActivity$2;
.super Ljava/lang/Object;
.source "EmotionSortActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->access$6(Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;)V

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->finish()V

    .line 64
    return-void
.end method
