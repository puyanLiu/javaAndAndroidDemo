.class Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$3;
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
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$3;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 117
    const-string/jumbo v0, "alipays://platformapi/startapp?appId=20000999&path=favorite"

    invoke-static {v0}, Lcom/alipay/mobile/emotion/util/JumpUtil;->startH5OrActivty(Ljava/lang/String;)V

    .line 118
    return-void
.end method
