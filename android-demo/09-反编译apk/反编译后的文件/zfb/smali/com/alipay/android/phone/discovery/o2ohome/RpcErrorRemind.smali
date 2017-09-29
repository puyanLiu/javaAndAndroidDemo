.class public Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;
.super Ljava/lang/Object;
.source "RpcErrorRemind.java"


# instance fields
.field private final context:Landroid/app/Activity;

.field private flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

.field private marginTop:I

.field private parentLayout:Landroid/widget/RelativeLayout;

.field private remindContainer:Landroid/widget/LinearLayout;

.field private siblingId:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->siblingId:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->remindContainer:Landroid/widget/LinearLayout;

    .line 41
    iput v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->marginTop:I

    .line 50
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->context:Landroid/app/Activity;

    .line 51
    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->parentLayout:Landroid/widget/RelativeLayout;

    .line 52
    iput p3, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->siblingId:I

    .line 53
    iput p4, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->marginTop:I

    .line 54
    return-void
.end method

.method private initRemindView()Z
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->remindContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->parentLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->siblingId:I

    if-lez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$layout;->view_flowtip_home:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->remindContainer:Landroid/widget/LinearLayout;

    .line 117
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->remindContainer:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind$1;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->remindContainer:Landroid/widget/LinearLayout;

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->flowtip_view:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    .line 125
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 126
    iget v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->marginTop:I

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 127
    const/4 v2, 0x3

    iget v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->siblingId:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 128
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->remindContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->parentLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->remindContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public removeFromParent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->remindContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->parentLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->remindContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 107
    :cond_0
    iput-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    .line 108
    iput-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->remindContainer:Landroid/widget/LinearLayout;

    .line 109
    return-void
.end method

.method public showEmptyView(Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->context:Landroid/app/Activity;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->flow_network_default:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 69
    :cond_0
    if-eqz p2, :cond_2

    .line 70
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->context:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0, p1, v3}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->toast(Ljava/lang/String;I)V

    .line 79
    :cond_1
    :goto_0
    return-void

    .line 72
    :cond_2
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->initRemindView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->resetFlowTipType(I)V

    .line 75
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->context:Landroid/app/Activity;

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->flow_reload:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->remindContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showNetworkErrorTip(ZLandroid/view/View$OnClickListener;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 86
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->context:Landroid/app/Activity;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->flow_network_error:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    if-eqz p1, :cond_1

    .line 88
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->context:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->toast(Ljava/lang/String;I)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->initRemindView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->resetFlowTipType(I)V

    .line 93
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->context:Landroid/app/Activity;

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->flow_try_again:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->remindContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
