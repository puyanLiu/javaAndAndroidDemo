.class Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter$1;
.super Ljava/lang/Object;
.source "EmotionTabBarAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;

.field private final synthetic val$itemModel:Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter$1;->this$0:Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter$1;->val$itemModel:Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter$1;->this$0:Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;->access$1(Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;)Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter$1;->this$0:Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;->access$1(Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;)Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter$1;->val$itemModel:Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter$OnItemClickListener;->OnItemClick(Landroid/view/View;Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;)V

    .line 98
    :cond_0
    return-void
.end method
