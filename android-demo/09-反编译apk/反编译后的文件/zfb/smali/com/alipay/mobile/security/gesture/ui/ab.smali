.class final Lcom/alipay/mobile/security/gesture/ui/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/aa;

.field private final synthetic b:Lcom/alipay/mobile/security/gesture/ui/o;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/aa;Lcom/alipay/mobile/security/gesture/ui/o;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/ab;->a:Lcom/alipay/mobile/security/gesture/ui/aa;

    iput-object p2, p0, Lcom/alipay/mobile/security/gesture/ui/ab;->b:Lcom/alipay/mobile/security/gesture/ui/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSwitchListener(ZLandroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ab;->b:Lcom/alipay/mobile/security/gesture/ui/o;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ab;->b:Lcom/alipay/mobile/security/gesture/ui/o;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ab;->a:Lcom/alipay/mobile/security/gesture/ui/aa;

    iget v1, v1, Lcom/alipay/mobile/security/gesture/ui/aa;->b:I

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/ab;->a:Lcom/alipay/mobile/security/gesture/ui/aa;

    iget-object v2, v2, Lcom/alipay/mobile/security/gesture/ui/aa;->e:Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    invoke-interface {v0, p1, v1, v2}, Lcom/alipay/mobile/security/gesture/ui/o;->a(ZILcom/alipay/mobile/security/gesture/data/ConfigItemData;)V

    goto :goto_0
.end method
