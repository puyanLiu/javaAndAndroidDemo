.class final Lcom/alipay/mobile/socialsdk/contact/ui/az;
.super Ljava/lang/Object;
.source "PersonalProfileMoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/az;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/az;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->onBackPressed()V

    .line 93
    return-void
.end method
