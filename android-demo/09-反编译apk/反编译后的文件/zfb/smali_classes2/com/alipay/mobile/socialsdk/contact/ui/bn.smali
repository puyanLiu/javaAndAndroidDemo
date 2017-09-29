.class final Lcom/alipay/mobile/socialsdk/contact/ui/bn;
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
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bn;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bn;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->setRemarName()V

    .line 136
    return-void
.end method
