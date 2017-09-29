.class final Lcom/alipay/android/app/ui/quickpay/widget/s;
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
    .line 104
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/s;->b:Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;

    iput p2, p0, Lcom/alipay/android/app/ui/quickpay/widget/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/s;->b:Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/s;->a:I

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/s;->a:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;->a(Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;II)V

    .line 109
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/s;->b:Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;->notifyDataSetChanged()V

    .line 110
    return-void
.end method
