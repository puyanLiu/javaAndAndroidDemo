.class Lcom/alipay/mobile/beehive/template/fragment/BaseFragment$1;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/template/fragment/BaseFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/template/fragment/BaseFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/template/fragment/BaseFragment$1;->this$0:Lcom/alipay/mobile/beehive/template/fragment/BaseFragment;

    .line 16
    invoke-direct {p0, p2}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public loadInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method
