.class Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$1$1;
.super Ljava/lang/Object;
.source "EmotionManagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$1;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$1$1;->this$1:Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 92
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 93
    return-void
.end method
