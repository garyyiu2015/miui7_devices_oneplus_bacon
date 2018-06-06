.class public Lcom/android/internal/util/aokp/RibbonAdapter;
.super Landroid/widget/BaseAdapter;
.source "RibbonAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/aokp/RibbonAdapter$RibbonViewHolder;,
        Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Ribbon Adapter"


# instance fields
.field private a:Landroid/content/Intent;

.field private b:Landroid/content/Intent;

.field private mContext:Landroid/content/Context;

.field private mIsVertical:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I

.field private u:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->mItems:Ljava/util/ArrayList;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->mIsVertical:Z

    .line 105
    iput-object p1, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->mItems:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->u:Landroid/content/Intent;

    .line 108
    iget-object v0, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->u:Landroid/content/Intent;

    const-string v1, "com.android.lockscreen.ACTION_UNLOCK_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->b:Landroid/content/Intent;

    .line 110
    iget-object v0, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->b:Landroid/content/Intent;

    const-string v1, "com.android.systemui.ACTION_HIDE_RIBBON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->a:Landroid/content/Intent;

    .line 112
    iget-object v0, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->a:Landroid/content/Intent;

    const-string v1, "com.android.systemui.ACTION_HIDE_APP_WINDOW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    return-void
.end method

.method private doAction(Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->a:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 176
    iget-object v1, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->b:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 177
    invoke-direct {p0, p1}, Lcom/android/internal/util/aokp/RibbonAdapter;->shouldUnlock(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->u:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 180
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 181
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.android.systemui.aokp.LAUNCH_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iget-object v1, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 185
    return-void
.end method

.method public static getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 200
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "f":Ljava/io/File;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/aokp/RibbonAdapter;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 203
    .local v1, "front":Landroid/graphics/drawable/Drawable;
    return-object v1
.end method

.method private static getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v11, 0x41c00000    # 24.0f

    const/4 v10, 0x0

    .line 207
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 209
    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 211
    .local v0, "canvas":Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 212
    .local v1, "color":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 213
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 214
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 215
    .local v5, "rectF":Landroid/graphics/RectF;
    const/high16 v6, 0x41c00000    # 24.0f

    .line 216
    .local v6, "roundPx":F
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 217
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 218
    const v7, -0xbdbdbe

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    invoke-virtual {v0, v5, v11, v11, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 220
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 221
    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 222
    return-object v2
.end method

.method private shouldUnlock(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 188
    sget-object v0, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_TORCH:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    invoke-virtual {v0}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_NOTIFICATIONS:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    invoke-virtual {v0}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_POWER:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    invoke-virtual {v0}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    :cond_0
    const/4 v0, 0x0

    .line 194
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 127
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 134
    if-nez p2, :cond_1

    .line 135
    iget-object v4, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->mContext:Landroid/content/Context;

    const v5, 0x109008c

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 136
    new-instance v3, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonViewHolder;

    invoke-direct {v3}, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonViewHolder;-><init>()V

    .line 137
    .local v3, "viewHolder":Lcom/android/internal/util/aokp/RibbonAdapter$RibbonViewHolder;
    const v4, 0x102026a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonViewHolder;->mTitle:Landroid/widget/TextView;

    .line 138
    const v4, 0x102026b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 139
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 144
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/aokp/RibbonAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;

    .line 145
    .local v0, "item":Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;
    if-eqz v0, :cond_0

    .line 146
    iget-object v4, v0, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;->mShortAction:Ljava/lang/String;

    const-string v5, "**null**"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 147
    iget-object v4, v3, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;->mLongAction:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/internal/util/aokp/NavBarHelpers;->getProperSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v4, v3, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;->mLongAction:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/internal/util/aokp/NavBarHelpers;->getIconImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    :goto_1
    iget-object v2, v0, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;->mIcon:Ljava/lang/String;

    .line 154
    .local v2, "uri":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "**null**"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "null"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 155
    iget-object v4, v3, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/android/internal/util/aokp/RibbonAdapter;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    .end local v2    # "uri":Ljava/lang/String;
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->mIsVertical:Z

    if-eqz v4, :cond_3

    .line 160
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v8, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 161
    .local v1, "params":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    .end local v1    # "params":Landroid/widget/AbsListView$LayoutParams;
    :goto_2
    return-object p2

    .line 141
    .end local v0    # "item":Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;
    .end local v3    # "viewHolder":Lcom/android/internal/util/aokp/RibbonAdapter$RibbonViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonViewHolder;

    .restart local v3    # "viewHolder":Lcom/android/internal/util/aokp/RibbonAdapter$RibbonViewHolder;
    goto :goto_0

    .line 150
    .restart local v0    # "item":Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;
    :cond_2
    iget-object v4, v3, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;->mShortAction:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/internal/util/aokp/NavBarHelpers;->getIconImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v4, v3, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;->mShortAction:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/internal/util/aokp/NavBarHelpers;->getProperSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 164
    :cond_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 165
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v4, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->mSize:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 166
    iget-object v4, v3, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonViewHolder;->mIcon:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->mSize:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 167
    iget-object v4, v3, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonViewHolder;->mTitle:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->mSize:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 168
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Lcom/android/internal/util/aokp/RibbonAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;

    iget-object v0, v0, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;->mShortAction:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/util/aokp/RibbonAdapter;->doAction(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Lcom/android/internal/util/aokp/RibbonAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;

    iget-object v0, v0, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;->mLongAction:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/util/aokp/RibbonAdapter;->doAction(Ljava/lang/String;)V

    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public setOrientation(Z)V
    .locals 0
    .param p1, "vertical"    # Z

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->mIsVertical:Z

    .line 242
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 237
    iput p1, p0, Lcom/android/internal/util/aokp/RibbonAdapter;->mSize:I

    .line 238
    return-void
.end method
