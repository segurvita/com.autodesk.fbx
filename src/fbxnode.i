// ***********************************************************************
// Copyright (c) 2017 Unity Technologies. All rights reserved.
//
// Licensed under the ##LICENSENAME##.
// See LICENSE.md file in the project root for full license information.
// ***********************************************************************

#ifdef IGNORE_ALL_INCLUDE_SOME
%rename("%s") FbxNode;

// As the ignore everything will include the constructor, destructor, methods etc
// in the class, these have to be explicitly unignored too:
%rename("%s") FbxNode::Create(FbxManager* pManager, const char* pName);
%rename("%s") FbxNode::Create(FbxObject* pContainer, const char* pName);
%rename("%s") FbxNode::GetParent();
%rename("%s") FbxNode::AddChild(FbxNode*);
%rename("%s") FbxNode::RemoveChild(FbxNode*);
%rename("%s") FbxNode::GetChild(int);
%rename("%s") FbxNode::GetChildCount(bool pRecursive = false) const;
%rename("%s") FbxNode::FindChild;
%immutable FbxNode::LclTranslation;
%rename("%s") FbxNode::LclTranslation;
%immutable FbxNode::LclRotation;
%rename("%s") FbxNode::LclRotation;
%immutable FbxNode::LclScaling;
%rename("%s") FbxNode::LclScaling;
%rename("%s") FbxNode::SetNodeAttribute;
%rename("%s") FbxNode::GetNodeAttribute();
%rename("%s") FbxNode::SetShadingMode;
%rename("%s") FbxNode::GetShadingMode;
%rename("%s") FbxNode::EShadingMode;

/* Materials */
%rename("%s") FbxNode::AddMaterial;

/* Visibility */
%rename("%s") FbxNode::SetVisibility;
%rename("%s") FbxNode::GetVisibility;
%fbximmutable(FbxNode::VisibilityInheritance);
#endif

%include "fbxsdk/scene/geometry/fbxnode.h"
