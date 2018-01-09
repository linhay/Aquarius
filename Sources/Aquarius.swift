//
//  Aquarius.swift
//  Aquarius
//
//  Created by linhey on 2018/1/7.
//

import UIKit

public struct Aquarius {
  
  public static var cellPrefix = "Aquarius"
  public static var cellSuffix = "Cell"
  
  public struct Container: Equatable,Hashable {
    
    public var hashValue: Int{
      return String(describing: self).hashValue
    }
    
    public static func ==(lhs: Aquarius.Container, rhs: Aquarius.Container) -> Bool {
      return lhs.ratio == rhs.ratio &&
        lhs.typeId == rhs.typeId &&
        lhs.index == rhs.index &&
        lhs.id == rhs.id &&
        lhs.config == rhs.config
    }
    
    /// 宽高比
    public var ratio: CGFloat
    /// 类型
    public var typeId: String
    /// 所在位置
    public var index: Int
    /// 唯一标识
    public var id: String
    /// 控件内部描述

    public var config: [String: AnyHashable]
    
    public init(ratio: CGFloat,
                typeId: String,
                index: Int,
                id: String,
                config: [String: AnyHashable]) {
      self.ratio = ratio
      self.typeId = typeId
      self.index = index
      self.id = id
      self.config = config
    }
  }
}



