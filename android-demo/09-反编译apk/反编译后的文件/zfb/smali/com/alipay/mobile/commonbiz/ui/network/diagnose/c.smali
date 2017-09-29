.class final Lcom/alipay/mobile/commonbiz/ui/network/diagnose/c;
.super Ljava/lang/Object;
.source "NetworkDiagnoseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/c;->a:Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;

    iput-boolean p2, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/c;->b:Z

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/c;->b:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/c;->a:Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/c;->a:Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;

    invoke-static {v0}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->a(Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;)V

    goto :goto_0
.end method
