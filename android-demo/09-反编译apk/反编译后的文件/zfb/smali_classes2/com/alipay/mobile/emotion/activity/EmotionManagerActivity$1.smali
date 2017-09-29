.class Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$1;
.super Ljava/lang/Object;
.source "EmotionManagerActivity.java"

# interfaces
.implements Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnChange(Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;I)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->refreshListView()V

    .line 167
    return-void
.end method
