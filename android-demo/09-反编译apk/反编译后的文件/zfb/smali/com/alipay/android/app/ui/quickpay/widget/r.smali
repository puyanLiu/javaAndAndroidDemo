.class final Lcom/alipay/android/app/ui/quickpay/widget/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;I)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/r;->b:Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;

    iput p2, p0, Lcom/alipay/android/app/ui/quickpay/widget/r;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/r;->b:Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/r;->a:I

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;->a(Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;I)I

    .line 92
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/r;->b:Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;->notifyDataSetChanged()V

    .line 93
    return-void
.end method
