.class Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$12;
.super Ljava/lang/Object;
.source "O2oWidgetGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$12;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 926
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$12;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$8(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Lcom/alipay/mobile/common/lbs/LBSLocation;Z)V

    .line 927
    return-void
.end method
