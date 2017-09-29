.class final Lcom/alipay/mobile/socialsdk/contact/ui/be;
.super Ljava/lang/Object;
.source "RealNameSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/be;->a:Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/be;->a:Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->onBackPressed()V

    .line 95
    return-void
.end method
