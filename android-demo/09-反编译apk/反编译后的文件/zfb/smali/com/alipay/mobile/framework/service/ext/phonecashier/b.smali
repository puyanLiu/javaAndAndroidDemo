.class final Lcom/alipay/mobile/framework/service/ext/phonecashier/b;
.super Ljava/lang/Object;
.source "PhoneCashierOrderExp.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrderExp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrderExp;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrderExp;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    new-array v0, p1, [Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrderExp;

    return-object v0
.end method
