.class final Lcom/alipay/mobile/socialsdk/contact/ui/bm;
.super Ljava/lang/Object;
.source "SetRemarkNameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bm;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bm;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->onBackPressed()V

    .line 122
    return-void
.end method
