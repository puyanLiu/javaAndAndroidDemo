.class public Lcom/alipay/mobile/beehive/service/PhotoInfo;
.super Ljava/lang/Object;
.source "PhotoInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alipay/mobile/beehive/service/PhotoInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_PHOTO:I = 0x0

.field public static final TYPE_VIDEO:I = 0x1

.field public static final TYPE_VIDEO_ORIGNAL:I = 0x2

.field private static final _1K:J = 0x400L

.field private static final _1M:J = 0x100000L


# instance fields
.field private fail:Landroid/graphics/drawable/Drawable;

.field private haseMark:Z

.field private largePhotoHeight:I

.field private largePhotoWidth:I

.field private leftText:Ljava/lang/String;

.field private loadOrigin:Z

.field private loading:Landroid/graphics/drawable/Drawable;

.field private mMediaType:I

.field private modifiedTime:J

.field public oriPhotoSize:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

.field private photo:Landroid/graphics/drawable/Drawable;

.field private photoGroupIndex:I

.field private photoHeight:I

.field private photoIndex:I

.field private photoMark:Lcom/alipay/mobile/beehive/photo/data/PhotoMark;

.field private photoOrientation:I

.field private photoPath:Ljava/lang/String;

.field private photoSize:J

.field private photoWidth:I

.field private rightText:Ljava/lang/String;

.field private selected:Z

.field private tag:Ljava/lang/String;

.field private thumb:Landroid/graphics/drawable/Drawable;

.field private thumbHeight:I

.field private thumbPath:Ljava/lang/String;

.field private thumbWidth:I

.field private videoDuration:J

.field public videoHeight:I

.field public videoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 506
    new-instance v0, Lcom/alipay/mobile/beehive/service/PhotoInfo$1;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/service/PhotoInfo$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v2, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->mMediaType:I

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoPath:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->thumbPath:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->leftText:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->rightText:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoSize:J

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->modifiedTime:J

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoWidth:I

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoHeight:I

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->largePhotoWidth:I

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->largePhotoHeight:I

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->thumbWidth:I

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->thumbHeight:I

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->loadOrigin:Z

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->selected:Z

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->tag:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoIndex:I

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoGroupIndex:I

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->mMediaType:I

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->videoDuration:J

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->videoWidth:I

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->videoHeight:I

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->haseMark:Z

    .line 248
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->haseMark:Z

    if-eqz v0, :cond_0

    .line 249
    new-instance v0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoMark:Lcom/alipay/mobile/beehive/photo/data/PhotoMark;

    .line 251
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoOrientation:I

    .line 252
    return-void

    :cond_1
    move v0, v2

    .line 237
    goto :goto_0

    :cond_2
    move v0, v2

    .line 238
    goto :goto_1

    :cond_3
    move v1, v2

    .line 247
    goto :goto_2
.end method

.method public constructor <init>(Lcom/alipay/mobile/beehive/service/PhotoInfo;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->mMediaType:I

    .line 255
    iget-object v1, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoPath:Ljava/lang/String;

    .line 256
    iget-object v1, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photo:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photo:Landroid/graphics/drawable/Drawable;

    .line 257
    iget-object v1, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->leftText:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->leftText:Ljava/lang/String;

    .line 258
    iget-object v1, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->rightText:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->rightText:Ljava/lang/String;

    .line 259
    iget-object v1, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->fail:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->fail:Landroid/graphics/drawable/Drawable;

    .line 260
    iget-object v1, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->thumb:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->thumb:Landroid/graphics/drawable/Drawable;

    .line 261
    iget-object v1, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->thumbPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->thumbPath:Ljava/lang/String;

    .line 262
    iget-wide v1, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoSize:J

    iput-wide v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoSize:J

    .line 263
    iget-wide v1, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->modifiedTime:J

    iput-wide v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->modifiedTime:J

    .line 264
    iget-object v1, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->loading:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->loading:Landroid/graphics/drawable/Drawable;

    .line 265
    iget v1, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoWidth:I

    iput v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoWidth:I

    .line 266
    iget v1, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoHeight:I

    iput v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoHeight:I

    .line 267
    iget v1, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->largePhotoWidth:I

    iput v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->largePhotoWidth:I

    .line 268
    iget v1, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->largePhotoHeight:I

    iput v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->largePhotoHeight:I

    .line 269
    iget v1, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->thumbWidth:I

    iput v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->thumbWidth:I

    .line 270
    iget v1, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->thumbHeight:I

    iput v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->thumbHeight:I

    .line 271
    iget-boolean v1, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->loadOrigin:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->loadOrigin:Z

    .line 272
    iget-boolean v1, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->selected:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->selected:Z

    .line 273
    iget-object v1, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->tag:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->tag:Ljava/lang/String;

    .line 274
    iget v1, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoIndex:I

    iput v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoIndex:I

    .line 275
    iget v1, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoGroupIndex:I

    iput v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoGroupIndex:I

    .line 276
    iget v1, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->mMediaType:I

    iput v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->mMediaType:I

    .line 277
    iget-wide v1, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->videoDuration:J

    iput-wide v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->videoDuration:J

    .line 278
    iget v1, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->videoHeight:I

    iput v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->videoHeight:I

    .line 279
    iget v1, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->videoWidth:I

    iput v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->videoWidth:I

    .line 280
    iget-boolean v1, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->haseMark:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoMark:Lcom/alipay/mobile/beehive/photo/data/PhotoMark;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->haseMark:Z

    .line 281
    iget-object v0, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoMark:Lcom/alipay/mobile/beehive/photo/data/PhotoMark;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoMark:Lcom/alipay/mobile/beehive/photo/data/PhotoMark;

    .line 282
    iget v0, p1, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoOrientation:I

    iput v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoOrientation:I

    .line 283
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 205
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v2, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->mMediaType:I

    .line 209
    iput-object p1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoPath:Ljava/lang/String;

    .line 210
    iput-object p2, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->leftText:Ljava/lang/String;

    .line 211
    iput-object p3, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->rightText:Ljava/lang/String;

    .line 212
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoSize:J

    .line 213
    iput v2, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoWidth:I

    .line 214
    iput v2, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoHeight:I

    .line 215
    iput v2, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->largePhotoWidth:I

    .line 216
    iput v2, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->largePhotoHeight:I

    .line 217
    iput v2, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->thumbWidth:I

    .line 218
    iput v2, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->thumbHeight:I

    .line 219
    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->loadOrigin:Z

    .line 220
    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->selected:Z

    .line 221
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoIndex:I

    .line 222
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method public getFail()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->fail:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLargePhotoHeight()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->largePhotoHeight:I

    return v0
.end method

.method public getLargePhotoWidth()I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->largePhotoWidth:I

    return v0
.end method

.method public getLeftText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->leftText:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadOrigin()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->loadOrigin:Z

    return v0
.end method

.method public getLoading()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->loading:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->mMediaType:I

    return v0
.end method

.method public getModifiedTime()J
    .locals 2

    .prologue
    .line 339
    iget-wide v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->modifiedTime:J

    return-wide v0
.end method

.method public getPhoto()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photo:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPhotoGroupIndex()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoGroupIndex:I

    return v0
.end method

.method public getPhotoHeight()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoHeight:I

    return v0
.end method

.method public getPhotoIndex()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoIndex:I

    return v0
.end method

.method public getPhotoMark()Lcom/alipay/mobile/beehive/photo/data/PhotoMark;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoMark:Lcom/alipay/mobile/beehive/photo/data/PhotoMark;

    return-object v0
.end method

.method public getPhotoOrientation()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoOrientation:I

    return v0
.end method

.method public getPhotoPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoSize()J
    .locals 2

    .prologue
    .line 330
    iget-wide v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoSize:J

    return-wide v0
.end method

.method public getPhotoWidth()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoWidth:I

    return v0
.end method

.method public getRightText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->rightText:Ljava/lang/String;

    return-object v0
.end method

.method public getSelected()Z
    .locals 1

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->selected:Z

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->thumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbHeight()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->thumbHeight:I

    return v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->thumbPath:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbWidth()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->thumbWidth:I

    return v0
.end method

.method public getVideoDuration()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->videoDuration:J

    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->videoHeight:I

    return v0
.end method

.method public getVideoSizeStr()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/32 v3, 0x100000

    const-wide/16 v6, 0xa

    const/high16 v5, 0x41200000    # 10.0f

    .line 43
    iget-wide v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoSize:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoSize:J

    div-long/2addr v1, v3

    mul-long/2addr v1, v6

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoSize:J

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    mul-long/2addr v1, v6

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->videoWidth:I

    return v0
.end method

.method public isVideo()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 111
    iget v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->mMediaType:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->mMediaType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public setFail(Landroid/graphics/drawable/Drawable;)Lcom/alipay/mobile/beehive/service/PhotoInfo;
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->fail:Landroid/graphics/drawable/Drawable;

    .line 371
    return-object p0
.end method

.method public setLargePhotoHeight(I)V
    .locals 0

    .prologue
    .line 450
    iput p1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->largePhotoHeight:I

    .line 451
    return-void
.end method

.method public setLargePhotoWidth(I)V
    .locals 0

    .prologue
    .line 442
    iput p1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->largePhotoWidth:I

    .line 443
    return-void
.end method

.method public setLeftText(Ljava/lang/String;)Lcom/alipay/mobile/beehive/service/PhotoInfo;
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->leftText:Ljava/lang/String;

    .line 317
    return-object p0
.end method

.method public setLoadOrigin(Z)Lcom/alipay/mobile/beehive/service/PhotoInfo;
    .locals 0

    .prologue
    .line 424
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->loadOrigin:Z

    .line 425
    return-object p0
.end method

.method public setLoading(Landroid/graphics/drawable/Drawable;)Lcom/alipay/mobile/beehive/service/PhotoInfo;
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->loading:Landroid/graphics/drawable/Drawable;

    .line 380
    return-object p0
.end method

.method public setMediaType(I)V
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->mMediaType:I

    .line 99
    return-void
.end method

.method public setModifiedTime(J)Lcom/alipay/mobile/beehive/service/PhotoInfo;
    .locals 0

    .prologue
    .line 343
    iput-wide p1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->modifiedTime:J

    .line 344
    return-object p0
.end method

.method public setPhoto(Landroid/graphics/drawable/Drawable;)Lcom/alipay/mobile/beehive/service/PhotoInfo;
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photo:Landroid/graphics/drawable/Drawable;

    .line 353
    return-object p0
.end method

.method public setPhotoGroupIndex(I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoGroupIndex:I

    .line 82
    return-void
.end method

.method public setPhotoHeight(I)Lcom/alipay/mobile/beehive/service/PhotoInfo;
    .locals 0

    .prologue
    .line 397
    iput p1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoHeight:I

    .line 398
    return-object p0
.end method

.method public setPhotoIndex(I)Lcom/alipay/mobile/beehive/service/PhotoInfo;
    .locals 0

    .prologue
    .line 433
    iput p1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoIndex:I

    .line 434
    return-object p0
.end method

.method public setPhotoMark(Lcom/alipay/mobile/beehive/photo/data/PhotoMark;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoMark:Lcom/alipay/mobile/beehive/photo/data/PhotoMark;

    .line 523
    return-void
.end method

.method public setPhotoOrientation(I)V
    .locals 0

    .prologue
    .line 286
    iput p1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoOrientation:I

    .line 287
    return-void
.end method

.method public setPhotoPath(Ljava/lang/String;)Lcom/alipay/mobile/beehive/service/PhotoInfo;
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoPath:Ljava/lang/String;

    .line 308
    return-object p0
.end method

.method public setPhotoSize(J)Lcom/alipay/mobile/beehive/service/PhotoInfo;
    .locals 0

    .prologue
    .line 334
    iput-wide p1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoSize:J

    .line 335
    return-object p0
.end method

.method public setPhotoWidth(I)Lcom/alipay/mobile/beehive/service/PhotoInfo;
    .locals 0

    .prologue
    .line 388
    iput p1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoWidth:I

    .line 389
    return-object p0
.end method

.method public setRightText(Ljava/lang/String;)Lcom/alipay/mobile/beehive/service/PhotoInfo;
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->rightText:Ljava/lang/String;

    .line 326
    return-object p0
.end method

.method public setSelected(Z)Lcom/alipay/mobile/beehive/service/PhotoInfo;
    .locals 0

    .prologue
    .line 458
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->selected:Z

    .line 459
    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/alipay/mobile/beehive/service/PhotoInfo;
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->tag:Ljava/lang/String;

    .line 468
    return-object p0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)Lcom/alipay/mobile/beehive/service/PhotoInfo;
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->thumb:Landroid/graphics/drawable/Drawable;

    .line 362
    return-object p0
.end method

.method public setThumbHeight(I)Lcom/alipay/mobile/beehive/service/PhotoInfo;
    .locals 0

    .prologue
    .line 415
    iput p1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->thumbHeight:I

    .line 416
    return-object p0
.end method

.method public setThumbPath(Ljava/lang/String;)Lcom/alipay/mobile/beehive/service/PhotoInfo;
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->thumbPath:Ljava/lang/String;

    .line 299
    return-object p0
.end method

.method public setThumbWidth(I)Lcom/alipay/mobile/beehive/service/PhotoInfo;
    .locals 0

    .prologue
    .line 406
    iput p1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->thumbWidth:I

    .line 407
    return-object p0
.end method

.method public setVideoDuration(J)V
    .locals 0

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->videoDuration:J

    .line 58
    return-void
.end method

.method public setVideoHeight(I)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->videoHeight:I

    .line 74
    return-void
.end method

.method public setVideoResolution(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 85
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "videoCompact"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "video"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": resolution = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :try_start_0
    const-string/jumbo v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 88
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->videoWidth:I

    .line 89
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->videoHeight:I

    .line 90
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "videoCompact"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "video"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->videoWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->videoHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "videoCompact"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u89e3\u6790\u89c6\u9891\u5bbd\u9ad8\u5931\u8d25\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVideoWidth(I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->videoWidth:I

    .line 66
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 478
    iget-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->thumbPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->leftText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->rightText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 482
    iget-wide v3, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoSize:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 483
    iget-wide v3, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->modifiedTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 484
    iget v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    iget v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    iget v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->largePhotoWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    iget v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->largePhotoHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    iget v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->thumbWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    iget v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->thumbHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->loadOrigin:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->selected:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    iget-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 493
    iget v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    iget v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoGroupIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    iget v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->mMediaType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    iget-wide v3, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->videoDuration:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 497
    iget v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->videoWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    iget v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->videoHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->haseMark:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoMark:Lcom/alipay/mobile/beehive/photo/data/PhotoMark;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    iget-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoMark:Lcom/alipay/mobile/beehive/photo/data/PhotoMark;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoMark:Lcom/alipay/mobile/beehive/photo/data/PhotoMark;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;->writeToParcel(Landroid/os/Parcel;I)V

    .line 503
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/beehive/service/PhotoInfo;->photoOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    return-void

    :cond_1
    move v0, v2

    .line 490
    goto :goto_0

    :cond_2
    move v0, v2

    .line 491
    goto :goto_1

    :cond_3
    move v1, v2

    .line 499
    goto :goto_2
.end method
