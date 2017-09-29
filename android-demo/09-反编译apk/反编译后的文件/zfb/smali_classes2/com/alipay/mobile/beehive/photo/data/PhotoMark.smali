.class public Lcom/alipay/mobile/beehive/photo/data/PhotoMark;
.super Ljava/lang/Object;
.source "PhotoMark.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final EMPTY_FLAG:I = 0xffff


# instance fields
.field private markHeight:I

.field private markId:Ljava/lang/String;

.field private markWidth:I

.field private paddingX:I

.field private paddingY:I

.field private percent:Ljava/lang/Integer;

.field private position:I

.field private transparency:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->markId:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->position:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->transparency:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->markWidth:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->markHeight:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->paddingX:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->paddingY:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 34
    const v1, 0xffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->percent:Ljava/lang/Integer;

    .line 35
    return-void

    .line 34
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;->access$0(Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->markId:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;->access$1(Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->position:I

    .line 52
    invoke-static {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;->access$2(Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->transparency:I

    .line 53
    invoke-static {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;->access$3(Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->markWidth:I

    .line 54
    invoke-static {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;->access$4(Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->markHeight:I

    .line 55
    invoke-static {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;->access$5(Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->paddingX:I

    .line 56
    invoke-static {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;->access$6(Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->paddingY:I

    .line 57
    invoke-static {p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;->access$7(Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->percent:Ljava/lang/Integer;

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/beehive/photo/data/PhotoMark;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iget-object v0, p1, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->markId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->markId:Ljava/lang/String;

    .line 39
    iget v0, p1, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->position:I

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->position:I

    .line 40
    iget v0, p1, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->transparency:I

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->transparency:I

    .line 41
    iget v0, p1, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->markWidth:I

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->markWidth:I

    .line 42
    iget v0, p1, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->markHeight:I

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->markHeight:I

    .line 43
    iget v0, p1, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->paddingX:I

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->paddingX:I

    .line 44
    iget v0, p1, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->paddingY:I

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->paddingY:I

    .line 45
    iget-object v0, p1, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->percent:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->percent:Ljava/lang/Integer;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->markId:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public getMarkHeight()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->markHeight:I

    return v0
.end method

.method public getMarkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->markId:Ljava/lang/String;

    return-object v0
.end method

.method public getMarkWidth()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->markWidth:I

    return v0
.end method

.method public getPaddingX()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->paddingX:I

    return v0
.end method

.method public getPaddingY()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->paddingY:I

    return v0
.end method

.method public getPercent()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->percent:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->position:I

    return v0
.end method

.method public getTransparency()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->transparency:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->markId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->transparency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->markWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->markHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->paddingX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->paddingY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->percent:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->percent:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    const v0, 0xffff

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
