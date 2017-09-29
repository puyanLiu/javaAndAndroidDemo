.class Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$4;
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
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$4;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 125
    const/4 v0, 0x0

    const-class v1, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity_;

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/util/JumpUtil;->startActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    .line 126
    return-void
.end method
