.class Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView$1;
.super Ljava/lang/Object;
.source "CityBladeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->access$0(Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->access$0(Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 187
    :cond_0
    return-void
.end method
