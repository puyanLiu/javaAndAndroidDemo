.class final Lcom/alipay/android/app/ui/quickpay/widget/t;
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
    .line 113
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/t;->b:Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;

    iput p2, p0, Lcom/alipay/android/app/ui/quickpay/widget/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/t;->b:Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/t;->a:I

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/t;->a:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;->a(Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;II)V

    .line 118
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/t;->b:Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/SettingChannelListAdapter;->notifyDataSetChanged()V

    .line 119
    return-void
.end method
