.class Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$2;
.super Ljava/lang/Object;
.source "EmotionManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;)Ljava/util/List;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 81
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;

    .line 82
    const-class v2, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;

    .line 81
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->access$5(Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;

    invoke-static {v2}, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->access$5(Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 97
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;

    sget v2, Lcom/alipay/android/phone/emotion/R$string;->tips:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;

    sget v3, Lcom/alipay/android/phone/emotion/R$string;->no_sort:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;

    sget v4, Lcom/alipay/android/phone/emotion/R$string;->comfirm:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 87
    new-instance v4, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$2$1;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$2$1;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$2;)V

    move-object v6, v5

    .line 86
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method
