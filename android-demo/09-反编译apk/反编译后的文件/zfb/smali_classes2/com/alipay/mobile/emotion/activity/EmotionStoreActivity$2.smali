.class Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$2;
.super Ljava/lang/Object;
.source "EmotionStoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;

    .line 105
    const-class v2, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity_;

    .line 104
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;

    invoke-static {v2}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 107
    return-void
.end method
