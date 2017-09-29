.class Lcom/alipay/mobile/emotion/activity/EmotionSortActivity$1;
.super Ljava/lang/Object;
.source "EmotionSortActivity.java"

# interfaces
.implements Lcom/alipay/mobile/emotion/drag/DragSortListView$DropListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;)Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;->dragItem(II)V

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->access$5(Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;Z)V

    .line 106
    return-void
.end method
