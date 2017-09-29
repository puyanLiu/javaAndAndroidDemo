.class public Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;
.super Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;
.source "PhotoEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "PhotoEditActivity"


# instance fields
.field private afterSaveInstanceState:Z

.field private btCancel:Landroid/widget/Button;

.field private btFinish:Landroid/widget/Button;

.field private btRotate:Landroid/widget/Button;

.field private contextIndex:Ljava/lang/String;

.field private cropSquare:Z

.field private photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

.field private photoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

.field private photoView:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

.field private saveFolder:Ljava/lang/String;

.field private saveOnEdit:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;-><init>()V

    return-void
.end method

.method private initPhotoInfo()Lcom/alipay/mobile/beehive/service/PhotoInfo;
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 112
    const/4 v0, 0x0

    .line 113
    const-string/jumbo v2, "photoInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    const-string/jumbo v0, "photoInfo"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 117
    :cond_0
    if-eqz v0, :cond_1

    .line 121
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->editPhotoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    goto :goto_0
.end method

.method private saveEdit()V
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->photoView:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->applyCrop()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 139
    iget-boolean v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->saveOnEdit:Z

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->saveFolder:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->createPhoto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 142
    const-string/jumbo v3, "savePath"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-static {v0, v3}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->savePhoto(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    .line 147
    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v2, v2, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->editListener:Lcom/alipay/mobile/beehive/service/PhotoEditListener;

    if-eqz v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v2, v2, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->editListener:Lcom/alipay/mobile/beehive/service/PhotoEditListener;

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->photoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-interface {v2, v3, v1, v0}, Lcom/alipay/mobile/beehive/service/PhotoEditListener;->onPhotoEdited(Lcom/alipay/mobile/beehive/service/PhotoInfo;Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->editSent:Z

    .line 157
    :cond_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->finish()V

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->contextIndex:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->remove(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->editListener:Lcom/alipay/mobile/beehive/service/PhotoEditListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-boolean v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->editSent:Z

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->editListener:Lcom/alipay/mobile/beehive/service/PhotoEditListener;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->photoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/beehive/service/PhotoEditListener;->onEditCanceled(Lcom/alipay/mobile/beehive/service/PhotoInfo;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->editListener:Lcom/alipay/mobile/beehive/service/PhotoEditListener;

    .line 186
    return-void
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->btFinish:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->saveEdit()V

    .line 128
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->finish()V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->btRotate:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->photoView:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->postRotate(F)V

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->btCancel:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->requestWindowFeature(I)Z

    .line 56
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->afterSaveInstanceState:Z

    .line 58
    if-nez p1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 60
    if-nez p1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->finish()V

    .line 108
    :goto_0
    return-void

    .line 65
    :cond_0
    if-nez p1, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->finish()V

    goto :goto_0

    .line 73
    :cond_1
    const-string/jumbo v0, "contextIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->contextIndex:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->contextIndex:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->get(Ljava/lang/String;)Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->contextIndex:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->remove(Ljava/lang/String;)V

    .line 76
    const-string/jumbo v0, "saveOnEdit"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->saveOnEdit:Z

    .line 78
    const-string/jumbo v0, "cropSquare"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->cropSquare:Z

    .line 80
    const-string/jumbo v0, "saveFolder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->saveFolder:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->saveFolder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    invoke-static {}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->getDefaultPhotoFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->saveFolder:Ljava/lang/String;

    .line 85
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->initPhotoInfo()Lcom/alipay/mobile/beehive/service/PhotoInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->photoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->photoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    if-nez v0, :cond_3

    .line 87
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->finish()V

    goto :goto_0

    .line 92
    :cond_3
    sget v0, Lcom/alipay/mobile/beehive/R$layout;->activity_photo_edit:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->setContentView(I)V

    .line 93
    sget v0, Lcom/alipay/mobile/beehive/R$id;->iv_content:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->photoView:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->photoView:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setEnableCrop(Z)V

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->photoView:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    iget-boolean v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->cropSquare:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setCropSquare(Z)V

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->photoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->photoView:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->photoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :goto_1
    sget v0, Lcom/alipay/mobile/beehive/R$id;->bt_done:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->btFinish:Landroid/widget/Button;

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->btFinish:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    sget v0, Lcom/alipay/mobile/beehive/R$id;->bt_cancel:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->btCancel:Landroid/widget/Button;

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->btCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    sget v0, Lcom/alipay/mobile/beehive/R$id;->bt_rotate:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->btRotate:Landroid/widget/Button;

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->btRotate:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 99
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->photoView:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->photoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper;->load(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->onDestroy()V

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->afterSaveInstanceState:Z

    if-nez v0, :cond_0

    .line 174
    sget-object v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->contextMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 176
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    .line 177
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->afterSaveInstanceState:Z

    .line 163
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 164
    const-string/jumbo v0, "contextIndex"

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->contextIndex:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget-object v0, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->contextMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->contextIndex:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoEditActivity;->photoContext:Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
