.class public abstract Lorg/androidannotations/api/builder/FragmentBuilder;
.super Lorg/androidannotations/api/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/androidannotations/api/builder/FragmentBuilder",
        "<TI;TF;>;F:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/androidannotations/api/builder/Builder;"
    }
.end annotation


# instance fields
.field protected args:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/androidannotations/api/builder/Builder;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public arg(Landroid/os/Bundle;)Lorg/androidannotations/api/builder/FragmentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public arg(Ljava/lang/String;B)Lorg/androidannotations/api/builder/FragmentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "B)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    return-object p0
.end method

.method public arg(Ljava/lang/String;C)Lorg/androidannotations/api/builder/FragmentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    return-object p0
.end method

.method public arg(Ljava/lang/String;D)Lorg/androidannotations/api/builder/FragmentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-object p0
.end method

.method public arg(Ljava/lang/String;F)Lorg/androidannotations/api/builder/FragmentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object p0
.end method

.method public arg(Ljava/lang/String;I)Lorg/androidannotations/api/builder/FragmentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public arg(Ljava/lang/String;J)Lorg/androidannotations/api/builder/FragmentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public arg(Ljava/lang/String;Landroid/os/Bundle;)Lorg/androidannotations/api/builder/FragmentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public arg(Ljava/lang/String;Landroid/os/Parcelable;)Lorg/androidannotations/api/builder/FragmentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable;",
            ")TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public arg(Ljava/lang/String;Landroid/util/SparseArray;)Lorg/androidannotations/api/builder/FragmentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object p0
.end method

.method public arg(Ljava/lang/String;Ljava/io/Serializable;)Lorg/androidannotations/api/builder/FragmentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ")TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0
.end method

.method public arg(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/androidannotations/api/builder/FragmentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ")TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public arg(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/FragmentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public arg(Ljava/lang/String;S)Lorg/androidannotations/api/builder/FragmentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "S)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    return-object p0
.end method

.method public arg(Ljava/lang/String;Z)Lorg/androidannotations/api/builder/FragmentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public arg(Ljava/lang/String;[B)Lorg/androidannotations/api/builder/FragmentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public arg(Ljava/lang/String;[C)Lorg/androidannotations/api/builder/FragmentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[C)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    return-object p0
.end method

.method public arg(Ljava/lang/String;[D)Lorg/androidannotations/api/builder/FragmentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[D)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    return-object p0
.end method

.method public arg(Ljava/lang/String;[F)Lorg/androidannotations/api/builder/FragmentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[F)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    return-object p0
.end method

.method public arg(Ljava/lang/String;[I)Lorg/androidannotations/api/builder/FragmentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object p0
.end method

.method public arg(Ljava/lang/String;[J)Lorg/androidannotations/api/builder/FragmentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[J)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    return-object p0
.end method

.method public arg(Ljava/lang/String;[Landroid/os/Parcelable;)Lorg/androidannotations/api/builder/FragmentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Landroid/os/Parcelable;",
            ")TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public arg(Ljava/lang/String;[Ljava/lang/String;)Lorg/androidannotations/api/builder/FragmentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method public arg(Ljava/lang/String;[S)Lorg/androidannotations/api/builder/FragmentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[S)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    return-object p0
.end method

.method public arg(Ljava/lang/String;[Z)Lorg/androidannotations/api/builder/FragmentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[Z)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    return-object p0
.end method

.method public args()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    return-object v0
.end method

.method public abstract build()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation
.end method

.method public integerArrayListArg(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/androidannotations/api/builder/FragmentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public parcelableArrayListArg(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/androidannotations/api/builder/FragmentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public stringArrayListArg(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/androidannotations/api/builder/FragmentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/FragmentBuilder;->args:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method
